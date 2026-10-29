cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2030"
  sha256 arm:   "b9624e7dcdd44dff1c527a0b917e9f21b9be6ca3ca79c5cc8cd30663ceac6d06",
         intel: "c9c64ebc88990a4baa8b5110d1d7629550b302d0f8e9b220930ebd30a1a99dbf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
