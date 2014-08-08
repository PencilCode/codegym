# The DocPad Configuration File
# It is simply a CoffeeScript Object which is parsed by CSON
docpadConfig = {

  # =================================
  # Template Data
  # These are variables that will be accessible via our templates
  # To access one of these within our templates, refer to the FAQ: https://github.com/bevry/docpad/wiki/FAQ

  templateData:

    # Specify some site properties
    site:
      # The production url of our website
      url: "http://gym.pencilcode.net"

      # Here are some old site urls that you would like to redirect from
      oldUrls: [
      ]

      # The default title of our website
      title: "Pencil Code Gym"

      # The website description (for SEO)
      description: """
        An interactive sandbox for learning how to code on the web.
        """

      # The website keywords (for SEO) separated by commas
      keywords: """
        education, code, computer science, coffeescript, turtle, music, animation, interactive fiction
        """

      # The website author's name
      author: "Pencil Code"

      # The website author's email
      email: "info@pencilcode.net"

      # Styles
      styles: [
        "/styles/twitter-bootstrap.css"
        "/styles/style.css"
      ]

      # Scripts
      scripts: [
        "//cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js"
        "//cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"
        "/vendor/twitter-bootstrap/dist/js/bootstrap.min.js"
        "/scripts/script.js"
      ]

    # -----------------------------
    # Helper Functions

    # Get the prepared site/document title
    # Often we would like to specify particular formatting to our page's title
    # we can apply that formatting here
    getPreparedTitle: ->
      # if we have a document title, then we should use that and suffix the site's title onto it
      if @document.title
        "#{@document.title} | #{@site.title}"
      # if our document does not have it's own title, then we should just use the site's title
      else
        @site.title

    # Get the prepared site/document description
    getPreparedDescription: ->
      # if we have a document description, then we should use that, otherwise use the site's description
      @document.description or @site.description

    # Get the prepared site/document keywords
    getPreparedKeywords: ->
      # Merge the document keywords with the site keywords
      @site.keywords.concat(@document.keywords or []).join(', ')

    localBlock: (type) ->
       block = []
       block = block.concat @site[type] if @site[type] and Array.isArray @site[type]
       block = block.concat @document[type] if @document[type] and Array.isArray @document[type]
       return block


  # =================================
  # Collections
  # These are special collections that our website makes available to us

  collections:
    pages: (database) ->
      database.findAllLive({pageOrder: $exists: true}, [pageOrder:1,title:1])

    examples: (database) ->
      database.findAllLive(
          {codeLevel: $exists: true}, [codeLevel:1, codeOrder:1])

    references: (database) ->
      database.findAllLive(
          {refOrder: $exists: true}, [section:1, refOrder:1, title: 1])

  # =================================
  # Regenerate Delay
  regenerateDelay: 0
  watchOptions: preferredMethods: ['watchFile','watch']

  # =================================
  # Plugins

  plugins:
    cleanurls:
      enabled: false
    downloader:
      downloads: [
        {
          name: 'Twitter Bootstrap'
          path: 'src/files/vendor/twitter-bootstrap'
          url: 'https://codeload.github.com/twbs/bootstrap/tar.gz/master'
          tarExtractClean: true
        }
      ]


  # =================================
  # DocPad Events

  # Here we can define handlers for events that DocPad fires
  # You can find a full listing of events on the DocPad Wiki
  events:

    # Server Extend
    # Used to add our own custom routes to the server before the docpad routes are added
    serverExtend: (opts) ->
      # Extract the server from the options
      {server} = opts
      docpad = @docpad

      # As we are now running in an event,
      # ensure we are using the latest copy of the docpad configuraiton
      # and fetch our urls from it
      latestConfig = docpad.getConfig()
      oldUrls = latestConfig.templateData.site.oldUrls or []
      newUrl = latestConfig.templateData.site.url

      # Redirect any requests accessing one of our sites oldUrls to the new site url
      server.use (req,res,next) ->
        if req.headers.host in oldUrls
          res.redirect(newUrl+req.url, 301)
        else
          next()

      # Redirect /img/ urls to public site.
      server.use (req,res,next) ->
        if /^\/img(?:\/|$)/.test(req.path)
          res.redirect('http://gym.pencilcode.net' + req.path, 301)
        else
          next()

  # =================================
  prompts: false
  checkVersion: false
}


# Export our DocPad Configuration
module.exports = docpadConfig
