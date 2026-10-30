cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2186"
  sha256 arm:   "4d29dea252625a54cfc239911d6e6108a069eb137a1031f6be55b7da71c64062",
         intel: "5eef592c431de3675387040a31506b14b03c52df18ec2ee932ec17433c7de712"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
