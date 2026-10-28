cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1922"
  sha256 arm:   "4ac372d98fed7d00e8f3fd59f493c89adce9acdbb1b9e0e33b0640788ac4dc3e",
         intel: "6753291524b3b1953e34c22a1bb2d4418bb17757f0035f4d733773477c70709c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
