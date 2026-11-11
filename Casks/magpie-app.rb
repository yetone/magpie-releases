cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3785"
  sha256 arm:   "f833ec7b4667a32d8fc7972e3e436b168184c97ac7e13e8de94c8dc9b4f64a26",
         intel: "9acc51baa4434654ed1bb0b53682a7b1d35c6c97681f7e117140b51a128900e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
