cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3846"
  sha256 arm:   "d501efdd6d3c5da1290c0d68fc3f98673868b7aa7efca3e4a7e7185bd84190d9",
         intel: "4e647ee8a78318de688a5b98676f43ed8bc504d85a61ed6fa5920d540c8e0edb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
