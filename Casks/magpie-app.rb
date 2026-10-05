cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1022"
  sha256 arm:   "d881a5a28d407b51a91704a1fd94f4b7ea11bab2119835356961acfb4de0d48f",
         intel: "876ed2fceb1da1ee94d643f5161f38c6e8af196ce5bc72b7e0cedfb8e78e8e60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
