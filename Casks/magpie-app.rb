cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2132"
  sha256 arm:   "03ee36f0a435aab6b3eeba0e71e8ab40fbaff3e96b866b722f42607c82782511",
         intel: "199590a96b8411da6ca72331c04483cab4e9dd57c1fadb095d00e3c99436b388"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
