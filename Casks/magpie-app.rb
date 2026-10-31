cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2497"
  sha256 arm:   "4d3e16a9ded0e0902bef28d36946988a1a20189e7209f09b041b5397fd2046f1",
         intel: "51f9ecc488e3ab48d7b4553e7fe823e33cb160c5174db8440b971636d3fb25b9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
