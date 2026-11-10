cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3626"
  sha256 arm:   "b2e4caec619676c317d51824cf0474491fc2020b528f06ff99545ee1dd36b5ac",
         intel: "737cc4b294ff951f57863612924cad13803eb7bde05efb6ca76e0025ce3e3ff1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
