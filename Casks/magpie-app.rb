cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1119"
  sha256 arm:   "d2924a84e4441e6f8ff36ed48d69db641707308c0c36be5c2e2176a777f20f51",
         intel: "a90382af3e8a9bd9179a1f350ff2f94a563d5def61d1f25bea40825a728236e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
