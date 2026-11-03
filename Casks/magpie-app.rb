cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2881"
  sha256 arm:   "41aa8ac3d6633034beddf028f987e698a0c28110d575becfffb6690c8cdb883d",
         intel: "071aeff0c2e5a54e636b3e48e4f4424c75cc80528525aebf7ca160012679d8ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
