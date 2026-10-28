cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1965"
  sha256 arm:   "053cbb5b25a65aead9493135678a4d905f8c21a12587bc758b67811a221697ce",
         intel: "beeffc7ad4f876cb7abc7e1a10e46055af2767dc6f5212b7779a3ceef144dabc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
