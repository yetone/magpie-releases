cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2661"
  sha256 arm:   "a3547765c5b25d8cb0d53221a2d9db5fd66ef4f3d197b3f8c555f220fc8d09c2",
         intel: "154321de9e2a4462d5a03634c56374c660b2e364f7eb264ba8558188651f75ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
