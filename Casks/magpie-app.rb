cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2197"
  sha256 arm:   "c0b19e80b986375239a147b90c4ef500eada23c9373ec1a4e228093369d40312",
         intel: "e136ebc47037670e47aeb7e351a2e8dc5cb867056e4e6bee6b9248f68ef1ff85"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
