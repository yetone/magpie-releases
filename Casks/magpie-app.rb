cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2887"
  sha256 arm:   "1a6e1194083d40e416b8045bccbf5c61824d81d62d5f45abe15c4d823c47a077",
         intel: "6394add7b8231cbcea60fbe6affb947a1c4985aa4f9675302b0a97044b310f93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
