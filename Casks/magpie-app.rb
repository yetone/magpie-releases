cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1133"
  sha256 arm:   "4e7c790a19be26dbbb4b6d8bf777a682eaaad4faf2674227ee0bf0dc07e9867a",
         intel: "79e219fa6076077fc8e5ec90261244be6d8407356449e2924ec7c8bf43c930d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
