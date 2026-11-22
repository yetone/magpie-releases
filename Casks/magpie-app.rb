cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4681"
  sha256 arm:   "6f752c1553e6a7166ec287cd3e7105f2d56babc145483b00ecd84685c4e71cca",
         intel: "195829e7ccc0be2929aadb282fc68a546ebfd0ba23d42044f88df555f2ee9aeb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
