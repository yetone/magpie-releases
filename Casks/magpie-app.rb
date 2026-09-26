cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.137"
  sha256 arm:   "e19e4126dcc49f1d7acbae34fe694b7c31a2b7575d2f1c67ae000ededb32ac99",
         intel: "147dc249b17f5beae56606f444d6ef9d2186faca7623ff4fc14936f0485de2c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
