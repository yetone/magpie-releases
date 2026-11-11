cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3758"
  sha256 arm:   "c38e968d897c438a50892f8edc6aaf0f9e6e9f50dc180f6e96fad01318aed1cb",
         intel: "30e758ef2ee48095fe0192ede858ab341500d15a0d7bd87232b0cdac4d05848d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
