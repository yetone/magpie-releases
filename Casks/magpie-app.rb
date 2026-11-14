cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4145"
  sha256 arm:   "817ef0471174493afff48d4ed42858069a99ba6f94b99a207b7d04fced93a0ff",
         intel: "4ecc366419a1d5510aa15738846376079f6ef34d8d94d231f83064324598bd89"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
