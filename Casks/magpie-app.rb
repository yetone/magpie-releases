cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3287"
  sha256 arm:   "eefdf333ff3c0ebe843582b885aa5250c79e8eedacfcb43a6ddd6849db128dda",
         intel: "c7c3c9690726f7d5a351531b761ee9a432a234293f503e65858a2d468333365b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
