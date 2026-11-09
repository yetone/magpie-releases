cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3465"
  sha256 arm:   "15eab2f9eb834dc4f05a4419d09426d66c360dbf2867331d8ce40246bdb4683d",
         intel: "1bb29a7ab2e658dbdc0324798c9c7d09d76d9f97315703f2fea35b0a234bc0dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
