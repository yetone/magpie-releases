cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4683"
  sha256 arm:   "c4398a21a920ef937af63ac01ad28c00782d325b44765f5faac42d9e90bd58e7",
         intel: "239b429b28226c2965c9e3a54bdf5f3f83fbcc7172593f8132f8cb556c72aca6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
