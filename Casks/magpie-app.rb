cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2428"
  sha256 arm:   "4e72760071952ce76520d9eb07d3e153602fc4ef4da96db0e54cb5cffb598685",
         intel: "bac6fa471a294d58331f992cabc2924e9235e6664029b0a52f21549073b51aae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
