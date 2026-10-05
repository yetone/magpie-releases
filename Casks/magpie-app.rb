cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.961"
  sha256 arm:   "bd5f1a011b519da8b4cafbba052e1c168ff8d8430f8fb9457c99911367430aaa",
         intel: "dd981f6c169d7da14576bdcf2bdb3fa51e89f338d865a9dd3cb98ce45b4a811d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
