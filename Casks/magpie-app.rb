cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2499"
  sha256 arm:   "6b0840c61d87750b7084ec455f9e6c16267e1451d8b1b3751cd3f71c279ab12c",
         intel: "05b75347f5bc91a3289c71553400781ef46704869296b17b0b7de42b15493367"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
