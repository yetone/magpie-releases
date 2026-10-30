cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2185"
  sha256 arm:   "5f74ca0494dc22f5d7c23269c8f7947379329c38d75cac9359a4f400d7cc2ca2",
         intel: "47150a6d08554c10464df3083feeb20949f86fec65ddf8a889d1cbc6d53774f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
