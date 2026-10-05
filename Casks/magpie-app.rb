cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.992"
  sha256 arm:   "77ec34242d9e51cc61d78b23c61a73c054c11783d5f1c4479b166d78b0f3de9d",
         intel: "1710f798f7d21dbc232f12ad57bedbc66be2528c1dce604097576cbd5925abe2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
