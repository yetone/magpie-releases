cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2894"
  sha256 arm:   "6ef4394b3cfe0d185cedf53e3754ad843b51197a4ed4cd7dd881577c0b50006a",
         intel: "7106915a1ce1d6d393d8be22040243b9680191b3ccb2e66c49427a8cddd2d2ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
