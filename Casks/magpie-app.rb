cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2085"
  sha256 arm:   "12767f153b8f8add2c14579fe5b09648dfc569298dba329c24677b788582c881",
         intel: "9c4a37e7646d12283367ebf4b5a5a88bc8da6aa462850bebca589b2fd2f1a51a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
