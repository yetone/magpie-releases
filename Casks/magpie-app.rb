cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4586"
  sha256 arm:   "18c4515986af14795f6be517408393c7a24cbfefba61c57def885f28a8b1a872",
         intel: "5d29fc83658c97c629795231b68b05213ae4b916630bdff2741618691535b9c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
