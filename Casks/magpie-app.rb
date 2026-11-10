cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3631"
  sha256 arm:   "26eda5425c3ea38fbdec9a7684a044e13c29f0d760ace1512ccd5e3edcede738",
         intel: "708478b49656990d8a38960efbb9390bdd68341c704d035e6d2ff83f2279ee34"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
