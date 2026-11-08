cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3328"
  sha256 arm:   "86d2dc7ba9e8cd1d8ce8428a5b674bc5ef5c00e4d4d3a6934db6bdbb816ab712",
         intel: "dd3b8d4d6a8f2fb6e3b6be9d97deb0844d9115a17069fbab0bf81b295607b9d4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
