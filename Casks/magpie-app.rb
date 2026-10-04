cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.902"
  sha256 arm:   "40babfa879ebbddce622934e3e22c408a074cfb524f4db28577ffbe7e7eabe71",
         intel: "764ca0cb9e08caf972f67701fc82dcfeb6e0eac78d699c9e8cba13dd9399ed95"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
