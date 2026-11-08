cask "crowsnest" do
  version "0.2.0"
  sha256 "929966dd2f6118cea739201e326ec6785d8886193bf4a3ad6326cec819df9397"

  url "https://github.com/altiros/crowsnest/releases/download/v#{version}/Crowsnest-#{version}.zip"
  name "Crowsnest"
  desc "Native Kubernetes management app"
  homepage "https://www.altiros.com/crowsnest/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: :sequoia

  app "Crowsnest.app"

  zap trash: [
    "~/Library/Preferences/com.altiros.Crowsnest.plist",
    "~/Library/Saved Application State/com.altiros.Crowsnest.savedState",
  ]
end
