cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3929"
  sha256 arm:   "5845a04fbd2d1a009059b4b2faac08347caa82036e12b2619be3c9275d73d37c",
         intel: "eae18b34f9d00c9a7204dce5c9a6951984ef6ca969d80307a9abdbe470230e31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
