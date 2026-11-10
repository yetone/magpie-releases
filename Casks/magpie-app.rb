cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3629"
  sha256 arm:   "64a0d7704d48adac0a7c67a23498b86fb62ade052d5189ce9e9a3f786d3e5200",
         intel: "116047dfb9cf988fd205c9082b9d6f9a11189c1d8d2d19d484ace9e65ce50254"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
