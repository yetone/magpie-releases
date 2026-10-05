cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1046"
  sha256 arm:   "2d481ff29ee64108018bc45afaaf11a15834d6c8106fe90a79581467e29fb8da",
         intel: "b64797aac09ed407b2b4d31825169b16ada7c8409db68db9c5d5dc42c1a01f4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
