cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3456"
  sha256 arm:   "e7e4abc008a02f8cdd06c75dd3cc0066a0e31dc068cbfad6dd57a1beba2176d9",
         intel: "2399701942309f5be1645432d63becf7bca8cee39f88cf977e1e631cb01349e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
