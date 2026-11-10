cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3610"
  sha256 arm:   "82e01ff1309f4b61d26f62ba4409de0ad0b9675a33b1790763a1410a29ebbe5c",
         intel: "df492e5ccb5212c89ee746cee29d9dde541a7e2f15ae8bcd2ba60d322f099996"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
