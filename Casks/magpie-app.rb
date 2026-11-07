cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3256"
  sha256 arm:   "ae09c7d9644fc048929bd84c26130db5a7147b27c713a28f387b2976ae034a59",
         intel: "816475dd276ff2499f36e485ae9ac3716dd3c34357245c55a4aafb22ede09efa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
