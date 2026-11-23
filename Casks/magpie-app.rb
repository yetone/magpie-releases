cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4724"
  sha256 arm:   "8c64d8272ff20e863f02e82bc4fbaf9d5caa2ab7894b34e873a720903d907208",
         intel: "e4a80941552ead33c2d78889aba74af4287de74de2963f5f1e8a28009b2f6e0e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
