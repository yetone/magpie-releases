cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2121"
  sha256 arm:   "ff1be682624592ec244b6a64a971d64f051492b8e2e2b351790971591dfa8978",
         intel: "cb095d1805ab9c95e79d9b17e16cf2b66dc35e2ba0edb942da4af9b4001d622a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
