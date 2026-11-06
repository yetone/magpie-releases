cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3132"
  sha256 arm:   "c1c114acf33d91ccb2f241c05a5c03f4b0df6cef700d318373496350b5e55ab1",
         intel: "60c260ae1f0a456e7ad0caef8f33ef0feee74a618c5c74e80c60edefd42ea1ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
