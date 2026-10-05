cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.965"
  sha256 arm:   "ff435d7412c78c15009b9a254d82e190656ecb5ea56e3e83d6ab0d29e9f12361",
         intel: "0a09d9aded20f65f3e90d543a39e5cb485f88dc59837ddd0095174ee3ef1e98c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
