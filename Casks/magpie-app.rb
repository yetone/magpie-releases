cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4419"
  sha256 arm:   "b961c8de370c088407ddb2f58a474d8d90466ee2f10be092b1e67a4ffc2bfc91",
         intel: "b445e66328f9edf79103153a43752bf1da020fe53c5f393a403772b5cf12f898"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
