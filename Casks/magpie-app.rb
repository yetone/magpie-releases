cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1955"
  sha256 arm:   "90ce6c35bdf35bd5ccf6f61f3e2ebd27946514a67b0ab026266a4e6e50578383",
         intel: "3369edb973f99168c21984bf69d199f9b62f1cd5b694616f776f536380184c6d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
