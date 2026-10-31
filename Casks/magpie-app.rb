cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2369"
  sha256 arm:   "4590685de61cc673cd037345cd332e499add84f8cf9da6c9562ea030a7944537",
         intel: "1cf411e6e13cf0a25f07d859331e976d100055945d1d46147a387887c10ad940"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
