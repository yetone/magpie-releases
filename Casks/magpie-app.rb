cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2137"
  sha256 arm:   "59ce34abf3c7108a0d4cddc3d7f4b938d6b694ab8a129cf0fb1a6360553f2edf",
         intel: "8e49ffbc0eb7974ac6e2b6ad4113f2a01f4040bf8610183452bf85194acf05fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
