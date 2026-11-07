cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3233"
  sha256 arm:   "ffdfcf1b4cfd6330556cd5c67a822e871e4b6900ed958d4a51cf953a3abf3c77",
         intel: "55ace078fe1c5636ef868a443d0fc34e0c1c0c7e00edaa39904df4412dee7e74"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
