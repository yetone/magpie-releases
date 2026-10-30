cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2166"
  sha256 arm:   "58ea239deab16be51fdb3b836fa3efb853cb4177aa7c25d13979272e7b4ee51c",
         intel: "ef27eb154853788187595398268d0344ce782ce7671aaee9c444096edbe5bc8e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
