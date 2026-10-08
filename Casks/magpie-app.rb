cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1114"
  sha256 arm:   "030d0fecaefa0df68d92582cba2a36745cc2a0e3e0e344e70f1cf88f806a4854",
         intel: "373efc22ad807c8e40aea82e3c29630bc8505563f6fc5385a7aef416430280c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
