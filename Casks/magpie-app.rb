cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2092"
  sha256 arm:   "63ebe913bdd02d1d0475ac99032048918bcccce569078dcf2f81fcbaf2622c68",
         intel: "3a3c0ca915a7fc85a3f0375b1199af0cf084131f79302c9c3dd7d14ff3f0384f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
