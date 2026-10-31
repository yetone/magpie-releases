cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2360"
  sha256 arm:   "23e6d2f965bba457681ca838bfefdbf3dab8ca25569f6768b926e62722e715f1",
         intel: "3697d4902fc355f1799c93b0cc8bce56bb1742103309181d3fd8c97e7491e2aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
