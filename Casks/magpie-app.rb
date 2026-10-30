cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2174"
  sha256 arm:   "5bba77fd1cdfb9d79e729674dbc236ae830a5a2b2e20ef23b50165e939c8188b",
         intel: "22f58a37360a5e912c0226b9d9945fbaf186fe13a03f515c9bbc6f3b3fce4f2b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
