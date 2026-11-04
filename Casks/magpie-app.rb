cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2969"
  sha256 arm:   "15ccd7e36575e2efbebed31311af5d7e11996afa326317005271f65077066b64",
         intel: "aea1a7f2f9ebe1892b0496813e31fca678cec99f3f724b69014c2e64618b293e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
