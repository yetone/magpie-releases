cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3079"
  sha256 arm:   "5928fd12acdc1d9584a028172ef5eaff9cf30d4262531956b2de417cb8e09def",
         intel: "63bbeda61e08b083b74f9e4bc5f6a306399478ef04260b6c26deaabda1ee68f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
