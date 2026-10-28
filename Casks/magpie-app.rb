cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1940"
  sha256 arm:   "c4e81406354fbca98f1077b3dec55ebe93385f7299ec62d931ccd7494d48df82",
         intel: "eef88a02e24e9cb6a5222fec67d8cbb150002f5b919052752ef73ecaeb21840f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
