cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1088"
  sha256 arm:   "0a5c0ec3ae79f82c568138264dba34fc22d8e19b0f80c1f046df56aaebde6f66",
         intel: "bde179c90ed622d6a79119e825e7293d7bce4fdd8c7e5e09f0d61443d4d226f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
